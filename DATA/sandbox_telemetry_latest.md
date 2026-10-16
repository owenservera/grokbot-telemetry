# sandbox_telemetry_parse — 2026-10-16 19:14:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=754804 lines=2821
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1868 |
| `memory_sample` | 944 |
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
| `chromeBrowserPssKb` | {'int': 944} |
| `chromeGpuPssKb` | {'int': 944} |
| `chromeOtherPssKb` | {'int': 944} |
| `chromeProcesses` | {'int': 944} |
| `chromeProfiles` | {'int': 944} |
| `chromeRendererMaxPssKb` | {'int': 944} |
| `chromeRendererPssKb` | {'int': 944} |
| `chromeRenderers` | {'int': 944} |
| `chromeTabs` | {'int': 944} |
| `chromeTabsProbedProfiles` | {'int': 944} |
| `chromeUtilityPssKb` | {'int': 944} |
| `desktopPssKb` | {'int': 944} |
| `hostPssKb` | {'int': 944} |
| `kind` | {'str': 944} |
| `memAvailableKb` | {'int': 944} |
| `memTotalKb` | {'int': 944} |
| `otherPssKb` | {'int': 944} |
| `processes` | {'int': 944} |
| `pssFallbackProcesses` | {'int': 944} |

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
| `cpuMillicores` | {'int': 1865} |
| `display` | {'int': 1868} |
| `kind` | {'str': 1868} |
| `processes` | {'int': 1868} |
| `pssKb` | {'int': 1868} |
| `rendererMaxPssKb` | {'int': 1868} |
| `renderers` | {'int': 1868} |
| `tabs` | {'int': 1867} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
