# sandbox_telemetry_parse — 2026-11-26 12:23:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3247746 lines=7193
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7178 |
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
| `chromeBrowserPssKb` | {'int': 7178} |
| `chromeGpuPssKb` | {'int': 7178} |
| `chromeOtherPssKb` | {'int': 7178} |
| `chromeProcesses` | {'int': 7178} |
| `chromeProfiles` | {'int': 7178} |
| `chromeRendererMaxPssKb` | {'int': 7178} |
| `chromeRendererPssKb` | {'int': 7178} |
| `chromeRenderers` | {'int': 7178} |
| `chromeTabs` | {'int': 7178} |
| `chromeTabsProbedProfiles` | {'int': 7178} |
| `chromeUtilityPssKb` | {'int': 7178} |
| `desktopPssKb` | {'int': 7178} |
| `hostPssKb` | {'int': 7178} |
| `kind` | {'str': 7178} |
| `memAvailableKb` | {'int': 7178} |
| `memTotalKb` | {'int': 7178} |
| `otherPssKb` | {'int': 7178} |
| `processes` | {'int': 7178} |
| `pssFallbackProcesses` | {'int': 7178} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
