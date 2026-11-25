# sandbox_telemetry_parse — 2026-11-25 15:52:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2819838 lines=6247
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6232 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6232} |
| `chromeGpuPssKb` | {'int': 6232} |
| `chromeOtherPssKb` | {'int': 6232} |
| `chromeProcesses` | {'int': 6232} |
| `chromeProfiles` | {'int': 6232} |
| `chromeRendererMaxPssKb` | {'int': 6232} |
| `chromeRendererPssKb` | {'int': 6232} |
| `chromeRenderers` | {'int': 6232} |
| `chromeTabs` | {'int': 6232} |
| `chromeTabsProbedProfiles` | {'int': 6232} |
| `chromeUtilityPssKb` | {'int': 6232} |
| `desktopPssKb` | {'int': 6232} |
| `hostPssKb` | {'int': 6232} |
| `kind` | {'str': 6232} |
| `memAvailableKb` | {'int': 6232} |
| `memTotalKb` | {'int': 6232} |
| `otherPssKb` | {'int': 6232} |
| `processes` | {'int': 6232} |
| `pssFallbackProcesses` | {'int': 6232} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
