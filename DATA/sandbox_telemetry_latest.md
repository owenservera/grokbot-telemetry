# sandbox_telemetry_parse — 2026-11-25 11:35:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2740705 lines=6072
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6057 |
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
| `chromeBrowserPssKb` | {'int': 6057} |
| `chromeGpuPssKb` | {'int': 6057} |
| `chromeOtherPssKb` | {'int': 6057} |
| `chromeProcesses` | {'int': 6057} |
| `chromeProfiles` | {'int': 6057} |
| `chromeRendererMaxPssKb` | {'int': 6057} |
| `chromeRendererPssKb` | {'int': 6057} |
| `chromeRenderers` | {'int': 6057} |
| `chromeTabs` | {'int': 6057} |
| `chromeTabsProbedProfiles` | {'int': 6057} |
| `chromeUtilityPssKb` | {'int': 6057} |
| `desktopPssKb` | {'int': 6057} |
| `hostPssKb` | {'int': 6057} |
| `kind` | {'str': 6057} |
| `memAvailableKb` | {'int': 6057} |
| `memTotalKb` | {'int': 6057} |
| `otherPssKb` | {'int': 6057} |
| `processes` | {'int': 6057} |
| `pssFallbackProcesses` | {'int': 6057} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
