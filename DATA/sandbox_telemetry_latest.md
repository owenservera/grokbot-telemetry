# sandbox_telemetry_parse — 2026-11-10 10:43:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1104119 lines=2448
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2439 |
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
| `chromeBrowserPssKb` | {'int': 2439} |
| `chromeGpuPssKb` | {'int': 2439} |
| `chromeOtherPssKb` | {'int': 2439} |
| `chromeProcesses` | {'int': 2439} |
| `chromeProfiles` | {'int': 2439} |
| `chromeRendererMaxPssKb` | {'int': 2439} |
| `chromeRendererPssKb` | {'int': 2439} |
| `chromeRenderers` | {'int': 2439} |
| `chromeTabs` | {'int': 2439} |
| `chromeTabsProbedProfiles` | {'int': 2439} |
| `chromeUtilityPssKb` | {'int': 2439} |
| `desktopPssKb` | {'int': 2439} |
| `hostPssKb` | {'int': 2439} |
| `kind` | {'str': 2439} |
| `memAvailableKb` | {'int': 2439} |
| `memTotalKb` | {'int': 2439} |
| `otherPssKb` | {'int': 2439} |
| `processes` | {'int': 2439} |
| `pssFallbackProcesses` | {'int': 2439} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
