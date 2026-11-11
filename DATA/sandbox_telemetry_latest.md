# sandbox_telemetry_parse — 2026-11-11 03:50:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1459402 lines=3233
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3224 |
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
| `chromeBrowserPssKb` | {'int': 3224} |
| `chromeGpuPssKb` | {'int': 3224} |
| `chromeOtherPssKb` | {'int': 3224} |
| `chromeProcesses` | {'int': 3224} |
| `chromeProfiles` | {'int': 3224} |
| `chromeRendererMaxPssKb` | {'int': 3224} |
| `chromeRendererPssKb` | {'int': 3224} |
| `chromeRenderers` | {'int': 3224} |
| `chromeTabs` | {'int': 3224} |
| `chromeTabsProbedProfiles` | {'int': 3224} |
| `chromeUtilityPssKb` | {'int': 3224} |
| `desktopPssKb` | {'int': 3224} |
| `hostPssKb` | {'int': 3224} |
| `kind` | {'str': 3224} |
| `memAvailableKb` | {'int': 3224} |
| `memTotalKb` | {'int': 3224} |
| `otherPssKb` | {'int': 3224} |
| `processes` | {'int': 3224} |
| `pssFallbackProcesses` | {'int': 3224} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
