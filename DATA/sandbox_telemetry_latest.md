# sandbox_telemetry_parse — 2026-11-12 10:26:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2083859 lines=4613
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4604 |
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
| `chromeBrowserPssKb` | {'int': 4604} |
| `chromeGpuPssKb` | {'int': 4604} |
| `chromeOtherPssKb` | {'int': 4604} |
| `chromeProcesses` | {'int': 4604} |
| `chromeProfiles` | {'int': 4604} |
| `chromeRendererMaxPssKb` | {'int': 4604} |
| `chromeRendererPssKb` | {'int': 4604} |
| `chromeRenderers` | {'int': 4604} |
| `chromeTabs` | {'int': 4604} |
| `chromeTabsProbedProfiles` | {'int': 4604} |
| `chromeUtilityPssKb` | {'int': 4604} |
| `desktopPssKb` | {'int': 4604} |
| `hostPssKb` | {'int': 4604} |
| `kind` | {'str': 4604} |
| `memAvailableKb` | {'int': 4604} |
| `memTotalKb` | {'int': 4604} |
| `otherPssKb` | {'int': 4604} |
| `processes` | {'int': 4604} |
| `pssFallbackProcesses` | {'int': 4604} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
