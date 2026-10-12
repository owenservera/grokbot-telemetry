# sandbox_telemetry_parse — 2026-10-13 00:32:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=721821 lines=1627
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1579 |
| `chrome_profile_sample` | 40 |
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
| `chromeBrowserPssKb` | {'int': 1579} |
| `chromeGpuPssKb` | {'int': 1579} |
| `chromeOtherPssKb` | {'int': 1579} |
| `chromeProcesses` | {'int': 1579} |
| `chromeProfiles` | {'int': 1579} |
| `chromeRendererMaxPssKb` | {'int': 1579} |
| `chromeRendererPssKb` | {'int': 1579} |
| `chromeRenderers` | {'int': 1579} |
| `chromeTabs` | {'int': 1579} |
| `chromeTabsProbedProfiles` | {'int': 1579} |
| `chromeUtilityPssKb` | {'int': 1579} |
| `desktopPssKb` | {'int': 1579} |
| `hostPssKb` | {'int': 1579} |
| `kind` | {'str': 1579} |
| `memAvailableKb` | {'int': 1579} |
| `memTotalKb` | {'int': 1579} |
| `otherPssKb` | {'int': 1579} |
| `processes` | {'int': 1579} |
| `pssFallbackProcesses` | {'int': 1579} |

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
| `cpuMillicores` | {'int': 39} |
| `display` | {'int': 40} |
| `kind` | {'str': 40} |
| `processes` | {'int': 40} |
| `pssKb` | {'int': 40} |
| `rendererMaxPssKb` | {'int': 40} |
| `renderers` | {'int': 40} |
| `tabs` | {'int': 40} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
