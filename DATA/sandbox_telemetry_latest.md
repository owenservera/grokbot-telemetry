# sandbox_telemetry_parse — 2026-11-12 09:13:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2058048 lines=4556
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4547 |
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
| `chromeBrowserPssKb` | {'int': 4547} |
| `chromeGpuPssKb` | {'int': 4547} |
| `chromeOtherPssKb` | {'int': 4547} |
| `chromeProcesses` | {'int': 4547} |
| `chromeProfiles` | {'int': 4547} |
| `chromeRendererMaxPssKb` | {'int': 4547} |
| `chromeRendererPssKb` | {'int': 4547} |
| `chromeRenderers` | {'int': 4547} |
| `chromeTabs` | {'int': 4547} |
| `chromeTabsProbedProfiles` | {'int': 4547} |
| `chromeUtilityPssKb` | {'int': 4547} |
| `desktopPssKb` | {'int': 4547} |
| `hostPssKb` | {'int': 4547} |
| `kind` | {'str': 4547} |
| `memAvailableKb` | {'int': 4547} |
| `memTotalKb` | {'int': 4547} |
| `otherPssKb` | {'int': 4547} |
| `processes` | {'int': 4547} |
| `pssFallbackProcesses` | {'int': 4547} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
