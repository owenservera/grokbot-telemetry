# sandbox_telemetry_parse — 2026-10-14 07:52:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=173034 lines=387
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 382 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 382} |
| `chromeGpuPssKb` | {'int': 382} |
| `chromeOtherPssKb` | {'int': 382} |
| `chromeProcesses` | {'int': 382} |
| `chromeProfiles` | {'int': 382} |
| `chromeRendererMaxPssKb` | {'int': 382} |
| `chromeRendererPssKb` | {'int': 382} |
| `chromeRenderers` | {'int': 382} |
| `chromeTabs` | {'int': 382} |
| `chromeTabsProbedProfiles` | {'int': 382} |
| `chromeUtilityPssKb` | {'int': 382} |
| `desktopPssKb` | {'int': 382} |
| `hostPssKb` | {'int': 382} |
| `kind` | {'str': 382} |
| `memAvailableKb` | {'int': 382} |
| `memTotalKb` | {'int': 382} |
| `otherPssKb` | {'int': 382} |
| `processes` | {'int': 382} |
| `pssFallbackProcesses` | {'int': 382} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
