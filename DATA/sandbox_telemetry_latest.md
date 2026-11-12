# sandbox_telemetry_parse — 2026-11-12 14:15:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2166673 lines=4796
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4787 |
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
| `chromeBrowserPssKb` | {'int': 4787} |
| `chromeGpuPssKb` | {'int': 4787} |
| `chromeOtherPssKb` | {'int': 4787} |
| `chromeProcesses` | {'int': 4787} |
| `chromeProfiles` | {'int': 4787} |
| `chromeRendererMaxPssKb` | {'int': 4787} |
| `chromeRendererPssKb` | {'int': 4787} |
| `chromeRenderers` | {'int': 4787} |
| `chromeTabs` | {'int': 4787} |
| `chromeTabsProbedProfiles` | {'int': 4787} |
| `chromeUtilityPssKb` | {'int': 4787} |
| `desktopPssKb` | {'int': 4787} |
| `hostPssKb` | {'int': 4787} |
| `kind` | {'str': 4787} |
| `memAvailableKb` | {'int': 4787} |
| `memTotalKb` | {'int': 4787} |
| `otherPssKb` | {'int': 4787} |
| `processes` | {'int': 4787} |
| `pssFallbackProcesses` | {'int': 4787} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
