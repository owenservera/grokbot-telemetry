# sandbox_telemetry_parse — 2026-11-12 07:27:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2024107 lines=4481
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4472 |
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
| `chromeBrowserPssKb` | {'int': 4472} |
| `chromeGpuPssKb` | {'int': 4472} |
| `chromeOtherPssKb` | {'int': 4472} |
| `chromeProcesses` | {'int': 4472} |
| `chromeProfiles` | {'int': 4472} |
| `chromeRendererMaxPssKb` | {'int': 4472} |
| `chromeRendererPssKb` | {'int': 4472} |
| `chromeRenderers` | {'int': 4472} |
| `chromeTabs` | {'int': 4472} |
| `chromeTabsProbedProfiles` | {'int': 4472} |
| `chromeUtilityPssKb` | {'int': 4472} |
| `desktopPssKb` | {'int': 4472} |
| `hostPssKb` | {'int': 4472} |
| `kind` | {'str': 4472} |
| `memAvailableKb` | {'int': 4472} |
| `memTotalKb` | {'int': 4472} |
| `otherPssKb` | {'int': 4472} |
| `processes` | {'int': 4472} |
| `pssFallbackProcesses` | {'int': 4472} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
