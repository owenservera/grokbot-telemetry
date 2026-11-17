# sandbox_telemetry_parse — 2026-11-17 04:24:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=245203 lines=548
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 541 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 541} |
| `chromeGpuPssKb` | {'int': 541} |
| `chromeOtherPssKb` | {'int': 541} |
| `chromeProcesses` | {'int': 541} |
| `chromeProfiles` | {'int': 541} |
| `chromeRendererMaxPssKb` | {'int': 541} |
| `chromeRendererPssKb` | {'int': 541} |
| `chromeRenderers` | {'int': 541} |
| `chromeTabs` | {'int': 541} |
| `chromeTabsProbedProfiles` | {'int': 541} |
| `chromeUtilityPssKb` | {'int': 541} |
| `desktopPssKb` | {'int': 541} |
| `hostPssKb` | {'int': 541} |
| `kind` | {'str': 541} |
| `memAvailableKb` | {'int': 541} |
| `memTotalKb` | {'int': 541} |
| `otherPssKb` | {'int': 541} |
| `processes` | {'int': 541} |
| `pssFallbackProcesses` | {'int': 541} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
