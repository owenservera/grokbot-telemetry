# sandbox_telemetry_parse — 2026-10-16 13:02:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=467438 lines=1747
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1152 |
| `memory_sample` | 586 |
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
| `chromeBrowserPssKb` | {'int': 586} |
| `chromeGpuPssKb` | {'int': 586} |
| `chromeOtherPssKb` | {'int': 586} |
| `chromeProcesses` | {'int': 586} |
| `chromeProfiles` | {'int': 586} |
| `chromeRendererMaxPssKb` | {'int': 586} |
| `chromeRendererPssKb` | {'int': 586} |
| `chromeRenderers` | {'int': 586} |
| `chromeTabs` | {'int': 586} |
| `chromeTabsProbedProfiles` | {'int': 586} |
| `chromeUtilityPssKb` | {'int': 586} |
| `desktopPssKb` | {'int': 586} |
| `hostPssKb` | {'int': 586} |
| `kind` | {'str': 586} |
| `memAvailableKb` | {'int': 586} |
| `memTotalKb` | {'int': 586} |
| `otherPssKb` | {'int': 586} |
| `processes` | {'int': 586} |
| `pssFallbackProcesses` | {'int': 586} |

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
| `cpuMillicores` | {'int': 1149} |
| `display` | {'int': 1152} |
| `kind` | {'str': 1152} |
| `processes` | {'int': 1152} |
| `pssKb` | {'int': 1152} |
| `rendererMaxPssKb` | {'int': 1152} |
| `renderers` | {'int': 1152} |
| `tabs` | {'int': 1151} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
