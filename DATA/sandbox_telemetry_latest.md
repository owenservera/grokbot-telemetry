# sandbox_telemetry_parse — 2026-11-10 16:02:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1213214 lines=2689
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2680 |
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
| `chromeBrowserPssKb` | {'int': 2680} |
| `chromeGpuPssKb` | {'int': 2680} |
| `chromeOtherPssKb` | {'int': 2680} |
| `chromeProcesses` | {'int': 2680} |
| `chromeProfiles` | {'int': 2680} |
| `chromeRendererMaxPssKb` | {'int': 2680} |
| `chromeRendererPssKb` | {'int': 2680} |
| `chromeRenderers` | {'int': 2680} |
| `chromeTabs` | {'int': 2680} |
| `chromeTabsProbedProfiles` | {'int': 2680} |
| `chromeUtilityPssKb` | {'int': 2680} |
| `desktopPssKb` | {'int': 2680} |
| `hostPssKb` | {'int': 2680} |
| `kind` | {'str': 2680} |
| `memAvailableKb` | {'int': 2680} |
| `memTotalKb` | {'int': 2680} |
| `otherPssKb` | {'int': 2680} |
| `processes` | {'int': 2680} |
| `pssFallbackProcesses` | {'int': 2680} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
