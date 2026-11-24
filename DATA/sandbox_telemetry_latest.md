# sandbox_telemetry_parse — 2026-11-24 16:29:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2358911 lines=5228
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5213 |
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
| `chromeBrowserPssKb` | {'int': 5213} |
| `chromeGpuPssKb` | {'int': 5213} |
| `chromeOtherPssKb` | {'int': 5213} |
| `chromeProcesses` | {'int': 5213} |
| `chromeProfiles` | {'int': 5213} |
| `chromeRendererMaxPssKb` | {'int': 5213} |
| `chromeRendererPssKb` | {'int': 5213} |
| `chromeRenderers` | {'int': 5213} |
| `chromeTabs` | {'int': 5213} |
| `chromeTabsProbedProfiles` | {'int': 5213} |
| `chromeUtilityPssKb` | {'int': 5213} |
| `desktopPssKb` | {'int': 5213} |
| `hostPssKb` | {'int': 5213} |
| `kind` | {'str': 5213} |
| `memAvailableKb` | {'int': 5213} |
| `memTotalKb` | {'int': 5213} |
| `otherPssKb` | {'int': 5213} |
| `processes` | {'int': 5213} |
| `pssFallbackProcesses` | {'int': 5213} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
