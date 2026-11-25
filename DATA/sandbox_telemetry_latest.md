# sandbox_telemetry_parse — 2026-11-25 02:57:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2561614 lines=5676
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5661 |
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
| `chromeBrowserPssKb` | {'int': 5661} |
| `chromeGpuPssKb` | {'int': 5661} |
| `chromeOtherPssKb` | {'int': 5661} |
| `chromeProcesses` | {'int': 5661} |
| `chromeProfiles` | {'int': 5661} |
| `chromeRendererMaxPssKb` | {'int': 5661} |
| `chromeRendererPssKb` | {'int': 5661} |
| `chromeRenderers` | {'int': 5661} |
| `chromeTabs` | {'int': 5661} |
| `chromeTabsProbedProfiles` | {'int': 5661} |
| `chromeUtilityPssKb` | {'int': 5661} |
| `desktopPssKb` | {'int': 5661} |
| `hostPssKb` | {'int': 5661} |
| `kind` | {'str': 5661} |
| `memAvailableKb` | {'int': 5661} |
| `memTotalKb` | {'int': 5661} |
| `otherPssKb` | {'int': 5661} |
| `processes` | {'int': 5661} |
| `pssFallbackProcesses` | {'int': 5661} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
