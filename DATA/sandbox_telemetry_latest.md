# sandbox_telemetry_parse — 2026-10-16 12:45:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=455397 lines=1702
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1122 |
| `memory_sample` | 571 |
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
| `chromeBrowserPssKb` | {'int': 571} |
| `chromeGpuPssKb` | {'int': 571} |
| `chromeOtherPssKb` | {'int': 571} |
| `chromeProcesses` | {'int': 571} |
| `chromeProfiles` | {'int': 571} |
| `chromeRendererMaxPssKb` | {'int': 571} |
| `chromeRendererPssKb` | {'int': 571} |
| `chromeRenderers` | {'int': 571} |
| `chromeTabs` | {'int': 571} |
| `chromeTabsProbedProfiles` | {'int': 571} |
| `chromeUtilityPssKb` | {'int': 571} |
| `desktopPssKb` | {'int': 571} |
| `hostPssKb` | {'int': 571} |
| `kind` | {'str': 571} |
| `memAvailableKb` | {'int': 571} |
| `memTotalKb` | {'int': 571} |
| `otherPssKb` | {'int': 571} |
| `processes` | {'int': 571} |
| `pssFallbackProcesses` | {'int': 571} |

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
| `cpuMillicores` | {'int': 1119} |
| `display` | {'int': 1122} |
| `kind` | {'str': 1122} |
| `processes` | {'int': 1122} |
| `pssKb` | {'int': 1122} |
| `rendererMaxPssKb` | {'int': 1122} |
| `renderers` | {'int': 1122} |
| `tabs` | {'int': 1121} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
