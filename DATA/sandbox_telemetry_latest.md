# sandbox_telemetry_parse — 2026-11-18 17:54:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=917769 lines=2037
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2028 |
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
| `chromeBrowserPssKb` | {'int': 2028} |
| `chromeGpuPssKb` | {'int': 2028} |
| `chromeOtherPssKb` | {'int': 2028} |
| `chromeProcesses` | {'int': 2028} |
| `chromeProfiles` | {'int': 2028} |
| `chromeRendererMaxPssKb` | {'int': 2028} |
| `chromeRendererPssKb` | {'int': 2028} |
| `chromeRenderers` | {'int': 2028} |
| `chromeTabs` | {'int': 2028} |
| `chromeTabsProbedProfiles` | {'int': 2028} |
| `chromeUtilityPssKb` | {'int': 2028} |
| `desktopPssKb` | {'int': 2028} |
| `hostPssKb` | {'int': 2028} |
| `kind` | {'str': 2028} |
| `memAvailableKb` | {'int': 2028} |
| `memTotalKb` | {'int': 2028} |
| `otherPssKb` | {'int': 2028} |
| `processes` | {'int': 2028} |
| `pssFallbackProcesses` | {'int': 2028} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
