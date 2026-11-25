# sandbox_telemetry_parse — 2026-11-25 10:07:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2709516 lines=6003
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5988 |
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
| `chromeBrowserPssKb` | {'int': 5988} |
| `chromeGpuPssKb` | {'int': 5988} |
| `chromeOtherPssKb` | {'int': 5988} |
| `chromeProcesses` | {'int': 5988} |
| `chromeProfiles` | {'int': 5988} |
| `chromeRendererMaxPssKb` | {'int': 5988} |
| `chromeRendererPssKb` | {'int': 5988} |
| `chromeRenderers` | {'int': 5988} |
| `chromeTabs` | {'int': 5988} |
| `chromeTabsProbedProfiles` | {'int': 5988} |
| `chromeUtilityPssKb` | {'int': 5988} |
| `desktopPssKb` | {'int': 5988} |
| `hostPssKb` | {'int': 5988} |
| `kind` | {'str': 5988} |
| `memAvailableKb` | {'int': 5988} |
| `memTotalKb` | {'int': 5988} |
| `otherPssKb` | {'int': 5988} |
| `processes` | {'int': 5988} |
| `pssFallbackProcesses` | {'int': 5988} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
