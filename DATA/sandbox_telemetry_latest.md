# sandbox_telemetry_parse — 2026-11-12 05:01:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1977538 lines=4378
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4369 |
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
| `chromeBrowserPssKb` | {'int': 4369} |
| `chromeGpuPssKb` | {'int': 4369} |
| `chromeOtherPssKb` | {'int': 4369} |
| `chromeProcesses` | {'int': 4369} |
| `chromeProfiles` | {'int': 4369} |
| `chromeRendererMaxPssKb` | {'int': 4369} |
| `chromeRendererPssKb` | {'int': 4369} |
| `chromeRenderers` | {'int': 4369} |
| `chromeTabs` | {'int': 4369} |
| `chromeTabsProbedProfiles` | {'int': 4369} |
| `chromeUtilityPssKb` | {'int': 4369} |
| `desktopPssKb` | {'int': 4369} |
| `hostPssKb` | {'int': 4369} |
| `kind` | {'str': 4369} |
| `memAvailableKb` | {'int': 4369} |
| `memTotalKb` | {'int': 4369} |
| `otherPssKb` | {'int': 4369} |
| `processes` | {'int': 4369} |
| `pssFallbackProcesses` | {'int': 4369} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
