# sandbox_telemetry_parse — 2026-11-07 01:02:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=244077 lines=547
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 538 |
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
| `chromeBrowserPssKb` | {'int': 538} |
| `chromeGpuPssKb` | {'int': 538} |
| `chromeOtherPssKb` | {'int': 538} |
| `chromeProcesses` | {'int': 538} |
| `chromeProfiles` | {'int': 538} |
| `chromeRendererMaxPssKb` | {'int': 538} |
| `chromeRendererPssKb` | {'int': 538} |
| `chromeRenderers` | {'int': 538} |
| `chromeTabs` | {'int': 538} |
| `chromeTabsProbedProfiles` | {'int': 538} |
| `chromeUtilityPssKb` | {'int': 538} |
| `desktopPssKb` | {'int': 538} |
| `hostPssKb` | {'int': 538} |
| `kind` | {'str': 538} |
| `memAvailableKb` | {'int': 538} |
| `memTotalKb` | {'int': 538} |
| `otherPssKb` | {'int': 538} |
| `processes` | {'int': 538} |
| `pssFallbackProcesses` | {'int': 538} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
