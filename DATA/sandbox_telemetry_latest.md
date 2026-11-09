# sandbox_telemetry_parse — 2026-11-09 22:54:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=873395 lines=1938
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1929 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1929} |
| `chromeGpuPssKb` | {'int': 1929} |
| `chromeOtherPssKb` | {'int': 1929} |
| `chromeProcesses` | {'int': 1929} |
| `chromeProfiles` | {'int': 1929} |
| `chromeRendererMaxPssKb` | {'int': 1929} |
| `chromeRendererPssKb` | {'int': 1929} |
| `chromeRenderers` | {'int': 1929} |
| `chromeTabs` | {'int': 1929} |
| `chromeTabsProbedProfiles` | {'int': 1929} |
| `chromeUtilityPssKb` | {'int': 1929} |
| `desktopPssKb` | {'int': 1929} |
| `hostPssKb` | {'int': 1929} |
| `kind` | {'str': 1929} |
| `memAvailableKb` | {'int': 1929} |
| `memTotalKb` | {'int': 1929} |
| `otherPssKb` | {'int': 1929} |
| `processes` | {'int': 1929} |
| `pssFallbackProcesses` | {'int': 1929} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
