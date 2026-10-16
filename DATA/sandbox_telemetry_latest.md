# sandbox_telemetry_parse — 2026-10-16 06:23:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=182557 lines=682
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 442 |
| `memory_sample` | 231 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 231} |
| `chromeGpuPssKb` | {'int': 231} |
| `chromeOtherPssKb` | {'int': 231} |
| `chromeProcesses` | {'int': 231} |
| `chromeProfiles` | {'int': 231} |
| `chromeRendererMaxPssKb` | {'int': 231} |
| `chromeRendererPssKb` | {'int': 231} |
| `chromeRenderers` | {'int': 231} |
| `chromeTabs` | {'int': 231} |
| `chromeTabsProbedProfiles` | {'int': 231} |
| `chromeUtilityPssKb` | {'int': 231} |
| `desktopPssKb` | {'int': 231} |
| `hostPssKb` | {'int': 231} |
| `kind` | {'str': 231} |
| `memAvailableKb` | {'int': 231} |
| `memTotalKb` | {'int': 231} |
| `otherPssKb` | {'int': 231} |
| `processes` | {'int': 231} |
| `pssFallbackProcesses` | {'int': 231} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 439} |
| `display` | {'int': 442} |
| `kind` | {'str': 442} |
| `processes` | {'int': 442} |
| `pssKb` | {'int': 442} |
| `rendererMaxPssKb` | {'int': 442} |
| `renderers` | {'int': 442} |
| `tabs` | {'int': 441} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
