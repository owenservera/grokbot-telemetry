# sandbox_telemetry_parse — 2026-10-27 10:35:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=469273 lines=1041
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1036 |
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
| `chromeBrowserPssKb` | {'int': 1036} |
| `chromeGpuPssKb` | {'int': 1036} |
| `chromeOtherPssKb` | {'int': 1036} |
| `chromeProcesses` | {'int': 1036} |
| `chromeProfiles` | {'int': 1036} |
| `chromeRendererMaxPssKb` | {'int': 1036} |
| `chromeRendererPssKb` | {'int': 1036} |
| `chromeRenderers` | {'int': 1036} |
| `chromeTabs` | {'int': 1036} |
| `chromeTabsProbedProfiles` | {'int': 1036} |
| `chromeUtilityPssKb` | {'int': 1036} |
| `desktopPssKb` | {'int': 1036} |
| `hostPssKb` | {'int': 1036} |
| `kind` | {'str': 1036} |
| `memAvailableKb` | {'int': 1036} |
| `memTotalKb` | {'int': 1036} |
| `otherPssKb` | {'int': 1036} |
| `processes` | {'int': 1036} |
| `pssFallbackProcesses` | {'int': 1036} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
