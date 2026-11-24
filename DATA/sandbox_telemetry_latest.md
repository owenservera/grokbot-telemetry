# sandbox_telemetry_parse — 2026-11-24 01:37:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2077152 lines=4605
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4590 |
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
| `chromeBrowserPssKb` | {'int': 4590} |
| `chromeGpuPssKb` | {'int': 4590} |
| `chromeOtherPssKb` | {'int': 4590} |
| `chromeProcesses` | {'int': 4590} |
| `chromeProfiles` | {'int': 4590} |
| `chromeRendererMaxPssKb` | {'int': 4590} |
| `chromeRendererPssKb` | {'int': 4590} |
| `chromeRenderers` | {'int': 4590} |
| `chromeTabs` | {'int': 4590} |
| `chromeTabsProbedProfiles` | {'int': 4590} |
| `chromeUtilityPssKb` | {'int': 4590} |
| `desktopPssKb` | {'int': 4590} |
| `hostPssKb` | {'int': 4590} |
| `kind` | {'str': 4590} |
| `memAvailableKb` | {'int': 4590} |
| `memTotalKb` | {'int': 4590} |
| `otherPssKb` | {'int': 4590} |
| `processes` | {'int': 4590} |
| `pssFallbackProcesses` | {'int': 4590} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
