# sandbox_telemetry_parse — 2026-10-27 10:08:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=458401 lines=1017
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1012 |
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
| `chromeBrowserPssKb` | {'int': 1012} |
| `chromeGpuPssKb` | {'int': 1012} |
| `chromeOtherPssKb` | {'int': 1012} |
| `chromeProcesses` | {'int': 1012} |
| `chromeProfiles` | {'int': 1012} |
| `chromeRendererMaxPssKb` | {'int': 1012} |
| `chromeRendererPssKb` | {'int': 1012} |
| `chromeRenderers` | {'int': 1012} |
| `chromeTabs` | {'int': 1012} |
| `chromeTabsProbedProfiles` | {'int': 1012} |
| `chromeUtilityPssKb` | {'int': 1012} |
| `desktopPssKb` | {'int': 1012} |
| `hostPssKb` | {'int': 1012} |
| `kind` | {'str': 1012} |
| `memAvailableKb` | {'int': 1012} |
| `memTotalKb` | {'int': 1012} |
| `otherPssKb` | {'int': 1012} |
| `processes` | {'int': 1012} |
| `pssFallbackProcesses` | {'int': 1012} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
