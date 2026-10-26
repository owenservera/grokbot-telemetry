# sandbox_telemetry_parse — 2026-10-26 19:19:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=94152 lines=212
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 207 |
| `boot_stage` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 207} |
| `chromeGpuPssKb` | {'int': 207} |
| `chromeOtherPssKb` | {'int': 207} |
| `chromeProcesses` | {'int': 207} |
| `chromeProfiles` | {'int': 207} |
| `chromeRendererMaxPssKb` | {'int': 207} |
| `chromeRendererPssKb` | {'int': 207} |
| `chromeRenderers` | {'int': 207} |
| `chromeTabs` | {'int': 207} |
| `chromeTabsProbedProfiles` | {'int': 207} |
| `chromeUtilityPssKb` | {'int': 207} |
| `desktopPssKb` | {'int': 207} |
| `hostPssKb` | {'int': 207} |
| `kind` | {'str': 207} |
| `memAvailableKb` | {'int': 207} |
| `memTotalKb` | {'int': 207} |
| `otherPssKb` | {'int': 207} |
| `processes` | {'int': 207} |
| `pssFallbackProcesses` | {'int': 207} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
