# sandbox_telemetry_parse — 2026-11-28 08:27:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=807295 lines=1791
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1783 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1783} |
| `chromeGpuPssKb` | {'int': 1783} |
| `chromeOtherPssKb` | {'int': 1783} |
| `chromeProcesses` | {'int': 1783} |
| `chromeProfiles` | {'int': 1783} |
| `chromeRendererMaxPssKb` | {'int': 1783} |
| `chromeRendererPssKb` | {'int': 1783} |
| `chromeRenderers` | {'int': 1783} |
| `chromeTabs` | {'int': 1783} |
| `chromeTabsProbedProfiles` | {'int': 1783} |
| `chromeUtilityPssKb` | {'int': 1783} |
| `desktopPssKb` | {'int': 1783} |
| `hostPssKb` | {'int': 1783} |
| `kind` | {'str': 1783} |
| `memAvailableKb` | {'int': 1783} |
| `memTotalKb` | {'int': 1783} |
| `otherPssKb` | {'int': 1783} |
| `processes` | {'int': 1783} |
| `pssFallbackProcesses` | {'int': 1783} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
