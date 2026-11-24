# sandbox_telemetry_parse — 2026-11-25 00:14:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2511885 lines=5566
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5551 |
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
| `chromeBrowserPssKb` | {'int': 5551} |
| `chromeGpuPssKb` | {'int': 5551} |
| `chromeOtherPssKb` | {'int': 5551} |
| `chromeProcesses` | {'int': 5551} |
| `chromeProfiles` | {'int': 5551} |
| `chromeRendererMaxPssKb` | {'int': 5551} |
| `chromeRendererPssKb` | {'int': 5551} |
| `chromeRenderers` | {'int': 5551} |
| `chromeTabs` | {'int': 5551} |
| `chromeTabsProbedProfiles` | {'int': 5551} |
| `chromeUtilityPssKb` | {'int': 5551} |
| `desktopPssKb` | {'int': 5551} |
| `hostPssKb` | {'int': 5551} |
| `kind` | {'str': 5551} |
| `memAvailableKb` | {'int': 5551} |
| `memTotalKb` | {'int': 5551} |
| `otherPssKb` | {'int': 5551} |
| `processes` | {'int': 5551} |
| `pssFallbackProcesses` | {'int': 5551} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
