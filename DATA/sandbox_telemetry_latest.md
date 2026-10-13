# sandbox_telemetry_parse — 2026-10-13 10:40:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1019040 lines=2561
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2046 |
| `chrome_profile_sample` | 507 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2046} |
| `chromeGpuPssKb` | {'int': 2046} |
| `chromeOtherPssKb` | {'int': 2046} |
| `chromeProcesses` | {'int': 2046} |
| `chromeProfiles` | {'int': 2046} |
| `chromeRendererMaxPssKb` | {'int': 2046} |
| `chromeRendererPssKb` | {'int': 2046} |
| `chromeRenderers` | {'int': 2046} |
| `chromeTabs` | {'int': 2046} |
| `chromeTabsProbedProfiles` | {'int': 2046} |
| `chromeUtilityPssKb` | {'int': 2046} |
| `desktopPssKb` | {'int': 2046} |
| `hostPssKb` | {'int': 2046} |
| `kind` | {'str': 2046} |
| `memAvailableKb` | {'int': 2046} |
| `memTotalKb` | {'int': 2046} |
| `otherPssKb` | {'int': 2046} |
| `processes` | {'int': 2046} |
| `pssFallbackProcesses` | {'int': 2046} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 506} |
| `display` | {'int': 507} |
| `kind` | {'str': 507} |
| `processes` | {'int': 507} |
| `pssKb` | {'int': 507} |
| `rendererMaxPssKb` | {'int': 507} |
| `renderers` | {'int': 507} |
| `tabs` | {'int': 507} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
