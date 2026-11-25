# sandbox_telemetry_parse — 2026-11-25 08:07:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2663351 lines=5901
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5886 |
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
| `chromeBrowserPssKb` | {'int': 5886} |
| `chromeGpuPssKb` | {'int': 5886} |
| `chromeOtherPssKb` | {'int': 5886} |
| `chromeProcesses` | {'int': 5886} |
| `chromeProfiles` | {'int': 5886} |
| `chromeRendererMaxPssKb` | {'int': 5886} |
| `chromeRendererPssKb` | {'int': 5886} |
| `chromeRenderers` | {'int': 5886} |
| `chromeTabs` | {'int': 5886} |
| `chromeTabsProbedProfiles` | {'int': 5886} |
| `chromeUtilityPssKb` | {'int': 5886} |
| `desktopPssKb` | {'int': 5886} |
| `hostPssKb` | {'int': 5886} |
| `kind` | {'str': 5886} |
| `memAvailableKb` | {'int': 5886} |
| `memTotalKb` | {'int': 5886} |
| `otherPssKb` | {'int': 5886} |
| `processes` | {'int': 5886} |
| `pssFallbackProcesses` | {'int': 5886} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
