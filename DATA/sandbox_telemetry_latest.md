# sandbox_telemetry_parse — 2026-11-12 10:58:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2095613 lines=4639
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4630 |
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
| `chromeBrowserPssKb` | {'int': 4630} |
| `chromeGpuPssKb` | {'int': 4630} |
| `chromeOtherPssKb` | {'int': 4630} |
| `chromeProcesses` | {'int': 4630} |
| `chromeProfiles` | {'int': 4630} |
| `chromeRendererMaxPssKb` | {'int': 4630} |
| `chromeRendererPssKb` | {'int': 4630} |
| `chromeRenderers` | {'int': 4630} |
| `chromeTabs` | {'int': 4630} |
| `chromeTabsProbedProfiles` | {'int': 4630} |
| `chromeUtilityPssKb` | {'int': 4630} |
| `desktopPssKb` | {'int': 4630} |
| `hostPssKb` | {'int': 4630} |
| `kind` | {'str': 4630} |
| `memAvailableKb` | {'int': 4630} |
| `memTotalKb` | {'int': 4630} |
| `otherPssKb` | {'int': 4630} |
| `processes` | {'int': 4630} |
| `pssFallbackProcesses` | {'int': 4630} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
