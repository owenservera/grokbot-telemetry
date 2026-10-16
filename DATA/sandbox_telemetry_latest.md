# sandbox_telemetry_parse — 2026-10-16 02:05:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1174103 lines=2618
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2586 |
| `chrome_profile_sample` | 24 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2586} |
| `chromeGpuPssKb` | {'int': 2586} |
| `chromeOtherPssKb` | {'int': 2586} |
| `chromeProcesses` | {'int': 2586} |
| `chromeProfiles` | {'int': 2586} |
| `chromeRendererMaxPssKb` | {'int': 2586} |
| `chromeRendererPssKb` | {'int': 2586} |
| `chromeRenderers` | {'int': 2586} |
| `chromeTabs` | {'int': 2586} |
| `chromeTabsProbedProfiles` | {'int': 2586} |
| `chromeUtilityPssKb` | {'int': 2586} |
| `desktopPssKb` | {'int': 2586} |
| `hostPssKb` | {'int': 2586} |
| `kind` | {'str': 2586} |
| `memAvailableKb` | {'int': 2586} |
| `memTotalKb` | {'int': 2586} |
| `otherPssKb` | {'int': 2586} |
| `processes` | {'int': 2586} |
| `pssFallbackProcesses` | {'int': 2586} |

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
| `cpuMillicores` | {'int': 23} |
| `display` | {'int': 24} |
| `kind` | {'str': 24} |
| `processes` | {'int': 24} |
| `pssKb` | {'int': 24} |
| `rendererMaxPssKb` | {'int': 24} |
| `renderers` | {'int': 24} |
| `tabs` | {'int': 24} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
