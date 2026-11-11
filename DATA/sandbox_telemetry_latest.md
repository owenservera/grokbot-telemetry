# sandbox_telemetry_parse — 2026-11-11 18:48:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1767956 lines=3915
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3906 |
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
| `chromeBrowserPssKb` | {'int': 3906} |
| `chromeGpuPssKb` | {'int': 3906} |
| `chromeOtherPssKb` | {'int': 3906} |
| `chromeProcesses` | {'int': 3906} |
| `chromeProfiles` | {'int': 3906} |
| `chromeRendererMaxPssKb` | {'int': 3906} |
| `chromeRendererPssKb` | {'int': 3906} |
| `chromeRenderers` | {'int': 3906} |
| `chromeTabs` | {'int': 3906} |
| `chromeTabsProbedProfiles` | {'int': 3906} |
| `chromeUtilityPssKb` | {'int': 3906} |
| `desktopPssKb` | {'int': 3906} |
| `hostPssKb` | {'int': 3906} |
| `kind` | {'str': 3906} |
| `memAvailableKb` | {'int': 3906} |
| `memTotalKb` | {'int': 3906} |
| `otherPssKb` | {'int': 3906} |
| `processes` | {'int': 3906} |
| `pssFallbackProcesses` | {'int': 3906} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
