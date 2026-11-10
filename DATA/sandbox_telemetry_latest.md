# sandbox_telemetry_parse — 2026-11-10 09:14:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1072866 lines=2379
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2370 |
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
| `chromeBrowserPssKb` | {'int': 2370} |
| `chromeGpuPssKb` | {'int': 2370} |
| `chromeOtherPssKb` | {'int': 2370} |
| `chromeProcesses` | {'int': 2370} |
| `chromeProfiles` | {'int': 2370} |
| `chromeRendererMaxPssKb` | {'int': 2370} |
| `chromeRendererPssKb` | {'int': 2370} |
| `chromeRenderers` | {'int': 2370} |
| `chromeTabs` | {'int': 2370} |
| `chromeTabsProbedProfiles` | {'int': 2370} |
| `chromeUtilityPssKb` | {'int': 2370} |
| `desktopPssKb` | {'int': 2370} |
| `hostPssKb` | {'int': 2370} |
| `kind` | {'str': 2370} |
| `memAvailableKb` | {'int': 2370} |
| `memTotalKb` | {'int': 2370} |
| `otherPssKb` | {'int': 2370} |
| `processes` | {'int': 2370} |
| `pssFallbackProcesses` | {'int': 2370} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
