# sandbox_telemetry_parse — 2026-11-10 10:28:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1097324 lines=2433
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2424 |
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
| `chromeBrowserPssKb` | {'int': 2424} |
| `chromeGpuPssKb` | {'int': 2424} |
| `chromeOtherPssKb` | {'int': 2424} |
| `chromeProcesses` | {'int': 2424} |
| `chromeProfiles` | {'int': 2424} |
| `chromeRendererMaxPssKb` | {'int': 2424} |
| `chromeRendererPssKb` | {'int': 2424} |
| `chromeRenderers` | {'int': 2424} |
| `chromeTabs` | {'int': 2424} |
| `chromeTabsProbedProfiles` | {'int': 2424} |
| `chromeUtilityPssKb` | {'int': 2424} |
| `desktopPssKb` | {'int': 2424} |
| `hostPssKb` | {'int': 2424} |
| `kind` | {'str': 2424} |
| `memAvailableKb` | {'int': 2424} |
| `memTotalKb` | {'int': 2424} |
| `otherPssKb` | {'int': 2424} |
| `processes` | {'int': 2424} |
| `pssFallbackProcesses` | {'int': 2424} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
