# sandbox_telemetry_parse — 2026-11-19 15:31:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1332513 lines=2954
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2945 |
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
| `chromeBrowserPssKb` | {'int': 2945} |
| `chromeGpuPssKb` | {'int': 2945} |
| `chromeOtherPssKb` | {'int': 2945} |
| `chromeProcesses` | {'int': 2945} |
| `chromeProfiles` | {'int': 2945} |
| `chromeRendererMaxPssKb` | {'int': 2945} |
| `chromeRendererPssKb` | {'int': 2945} |
| `chromeRenderers` | {'int': 2945} |
| `chromeTabs` | {'int': 2945} |
| `chromeTabsProbedProfiles` | {'int': 2945} |
| `chromeUtilityPssKb` | {'int': 2945} |
| `desktopPssKb` | {'int': 2945} |
| `hostPssKb` | {'int': 2945} |
| `kind` | {'str': 2945} |
| `memAvailableKb` | {'int': 2945} |
| `memTotalKb` | {'int': 2945} |
| `otherPssKb` | {'int': 2945} |
| `processes` | {'int': 2945} |
| `pssFallbackProcesses` | {'int': 2945} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
