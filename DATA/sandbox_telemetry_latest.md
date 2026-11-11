# sandbox_telemetry_parse — 2026-11-11 10:15:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1579237 lines=3498
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3489 |
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
| `chromeBrowserPssKb` | {'int': 3489} |
| `chromeGpuPssKb` | {'int': 3489} |
| `chromeOtherPssKb` | {'int': 3489} |
| `chromeProcesses` | {'int': 3489} |
| `chromeProfiles` | {'int': 3489} |
| `chromeRendererMaxPssKb` | {'int': 3489} |
| `chromeRendererPssKb` | {'int': 3489} |
| `chromeRenderers` | {'int': 3489} |
| `chromeTabs` | {'int': 3489} |
| `chromeTabsProbedProfiles` | {'int': 3489} |
| `chromeUtilityPssKb` | {'int': 3489} |
| `desktopPssKb` | {'int': 3489} |
| `hostPssKb` | {'int': 3489} |
| `kind` | {'str': 3489} |
| `memAvailableKb` | {'int': 3489} |
| `memTotalKb` | {'int': 3489} |
| `otherPssKb` | {'int': 3489} |
| `processes` | {'int': 3489} |
| `pssFallbackProcesses` | {'int': 3489} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
