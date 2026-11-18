# sandbox_telemetry_parse — 2026-11-18 19:20:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=944007 lines=2095
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2086 |
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
| `chromeBrowserPssKb` | {'int': 2086} |
| `chromeGpuPssKb` | {'int': 2086} |
| `chromeOtherPssKb` | {'int': 2086} |
| `chromeProcesses` | {'int': 2086} |
| `chromeProfiles` | {'int': 2086} |
| `chromeRendererMaxPssKb` | {'int': 2086} |
| `chromeRendererPssKb` | {'int': 2086} |
| `chromeRenderers` | {'int': 2086} |
| `chromeTabs` | {'int': 2086} |
| `chromeTabsProbedProfiles` | {'int': 2086} |
| `chromeUtilityPssKb` | {'int': 2086} |
| `desktopPssKb` | {'int': 2086} |
| `hostPssKb` | {'int': 2086} |
| `kind` | {'str': 2086} |
| `memAvailableKb` | {'int': 2086} |
| `memTotalKb` | {'int': 2086} |
| `otherPssKb` | {'int': 2086} |
| `processes` | {'int': 2086} |
| `pssFallbackProcesses` | {'int': 2086} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
