# sandbox_telemetry_parse — 2026-11-12 08:57:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2051268 lines=4541
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4532 |
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
| `chromeBrowserPssKb` | {'int': 4532} |
| `chromeGpuPssKb` | {'int': 4532} |
| `chromeOtherPssKb` | {'int': 4532} |
| `chromeProcesses` | {'int': 4532} |
| `chromeProfiles` | {'int': 4532} |
| `chromeRendererMaxPssKb` | {'int': 4532} |
| `chromeRendererPssKb` | {'int': 4532} |
| `chromeRenderers` | {'int': 4532} |
| `chromeTabs` | {'int': 4532} |
| `chromeTabsProbedProfiles` | {'int': 4532} |
| `chromeUtilityPssKb` | {'int': 4532} |
| `desktopPssKb` | {'int': 4532} |
| `hostPssKb` | {'int': 4532} |
| `kind` | {'str': 4532} |
| `memAvailableKb` | {'int': 4532} |
| `memTotalKb` | {'int': 4532} |
| `otherPssKb` | {'int': 4532} |
| `processes` | {'int': 4532} |
| `pssFallbackProcesses` | {'int': 4532} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
