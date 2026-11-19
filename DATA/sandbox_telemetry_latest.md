# sandbox_telemetry_parse — 2026-11-19 02:02:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1074711 lines=2384
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2375 |
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
| `chromeBrowserPssKb` | {'int': 2375} |
| `chromeGpuPssKb` | {'int': 2375} |
| `chromeOtherPssKb` | {'int': 2375} |
| `chromeProcesses` | {'int': 2375} |
| `chromeProfiles` | {'int': 2375} |
| `chromeRendererMaxPssKb` | {'int': 2375} |
| `chromeRendererPssKb` | {'int': 2375} |
| `chromeRenderers` | {'int': 2375} |
| `chromeTabs` | {'int': 2375} |
| `chromeTabsProbedProfiles` | {'int': 2375} |
| `chromeUtilityPssKb` | {'int': 2375} |
| `desktopPssKb` | {'int': 2375} |
| `hostPssKb` | {'int': 2375} |
| `kind` | {'str': 2375} |
| `memAvailableKb` | {'int': 2375} |
| `memTotalKb` | {'int': 2375} |
| `otherPssKb` | {'int': 2375} |
| `processes` | {'int': 2375} |
| `pssFallbackProcesses` | {'int': 2375} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
