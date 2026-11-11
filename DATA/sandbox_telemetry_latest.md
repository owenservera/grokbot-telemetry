# sandbox_telemetry_parse — 2026-11-11 18:31:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1761628 lines=3901
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3892 |
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
| `chromeBrowserPssKb` | {'int': 3892} |
| `chromeGpuPssKb` | {'int': 3892} |
| `chromeOtherPssKb` | {'int': 3892} |
| `chromeProcesses` | {'int': 3892} |
| `chromeProfiles` | {'int': 3892} |
| `chromeRendererMaxPssKb` | {'int': 3892} |
| `chromeRendererPssKb` | {'int': 3892} |
| `chromeRenderers` | {'int': 3892} |
| `chromeTabs` | {'int': 3892} |
| `chromeTabsProbedProfiles` | {'int': 3892} |
| `chromeUtilityPssKb` | {'int': 3892} |
| `desktopPssKb` | {'int': 3892} |
| `hostPssKb` | {'int': 3892} |
| `kind` | {'str': 3892} |
| `memAvailableKb` | {'int': 3892} |
| `memTotalKb` | {'int': 3892} |
| `otherPssKb` | {'int': 3892} |
| `processes` | {'int': 3892} |
| `pssFallbackProcesses` | {'int': 3892} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
