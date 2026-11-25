# sandbox_telemetry_parse — 2026-11-25 08:02:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2661091 lines=5896
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5881 |
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
| `chromeBrowserPssKb` | {'int': 5881} |
| `chromeGpuPssKb` | {'int': 5881} |
| `chromeOtherPssKb` | {'int': 5881} |
| `chromeProcesses` | {'int': 5881} |
| `chromeProfiles` | {'int': 5881} |
| `chromeRendererMaxPssKb` | {'int': 5881} |
| `chromeRendererPssKb` | {'int': 5881} |
| `chromeRenderers` | {'int': 5881} |
| `chromeTabs` | {'int': 5881} |
| `chromeTabsProbedProfiles` | {'int': 5881} |
| `chromeUtilityPssKb` | {'int': 5881} |
| `desktopPssKb` | {'int': 5881} |
| `hostPssKb` | {'int': 5881} |
| `kind` | {'str': 5881} |
| `memAvailableKb` | {'int': 5881} |
| `memTotalKb` | {'int': 5881} |
| `otherPssKb` | {'int': 5881} |
| `processes` | {'int': 5881} |
| `pssFallbackProcesses` | {'int': 5881} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
