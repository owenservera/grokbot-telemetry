# sandbox_telemetry_parse — 2026-11-12 12:59:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2137682 lines=4732
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4723 |
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
| `chromeBrowserPssKb` | {'int': 4723} |
| `chromeGpuPssKb` | {'int': 4723} |
| `chromeOtherPssKb` | {'int': 4723} |
| `chromeProcesses` | {'int': 4723} |
| `chromeProfiles` | {'int': 4723} |
| `chromeRendererMaxPssKb` | {'int': 4723} |
| `chromeRendererPssKb` | {'int': 4723} |
| `chromeRenderers` | {'int': 4723} |
| `chromeTabs` | {'int': 4723} |
| `chromeTabsProbedProfiles` | {'int': 4723} |
| `chromeUtilityPssKb` | {'int': 4723} |
| `desktopPssKb` | {'int': 4723} |
| `hostPssKb` | {'int': 4723} |
| `kind` | {'str': 4723} |
| `memAvailableKb` | {'int': 4723} |
| `memTotalKb` | {'int': 4723} |
| `otherPssKb` | {'int': 4723} |
| `processes` | {'int': 4723} |
| `pssFallbackProcesses` | {'int': 4723} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
