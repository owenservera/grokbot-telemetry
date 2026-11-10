# sandbox_telemetry_parse — 2026-11-10 19:23:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1283416 lines=2844
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2835 |
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
| `chromeBrowserPssKb` | {'int': 2835} |
| `chromeGpuPssKb` | {'int': 2835} |
| `chromeOtherPssKb` | {'int': 2835} |
| `chromeProcesses` | {'int': 2835} |
| `chromeProfiles` | {'int': 2835} |
| `chromeRendererMaxPssKb` | {'int': 2835} |
| `chromeRendererPssKb` | {'int': 2835} |
| `chromeRenderers` | {'int': 2835} |
| `chromeTabs` | {'int': 2835} |
| `chromeTabsProbedProfiles` | {'int': 2835} |
| `chromeUtilityPssKb` | {'int': 2835} |
| `desktopPssKb` | {'int': 2835} |
| `hostPssKb` | {'int': 2835} |
| `kind` | {'str': 2835} |
| `memAvailableKb` | {'int': 2835} |
| `memTotalKb` | {'int': 2835} |
| `otherPssKb` | {'int': 2835} |
| `processes` | {'int': 2835} |
| `pssFallbackProcesses` | {'int': 2835} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
