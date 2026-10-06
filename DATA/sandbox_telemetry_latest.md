# sandbox_telemetry_parse — 2026-10-06 22:00:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=627194 lines=1380
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1375 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1375} |
| `chromeGpuPssKb` | {'int': 1375} |
| `chromeOtherPssKb` | {'int': 1375} |
| `chromeProcesses` | {'int': 1375} |
| `chromeProfiles` | {'int': 1375} |
| `chromeRendererMaxPssKb` | {'int': 1375} |
| `chromeRendererPssKb` | {'int': 1375} |
| `chromeRenderers` | {'int': 1375} |
| `chromeTabs` | {'int': 1375} |
| `chromeTabsProbedProfiles` | {'int': 1375} |
| `chromeUtilityPssKb` | {'int': 1375} |
| `desktopPssKb` | {'int': 1375} |
| `hostPssKb` | {'int': 1375} |
| `kind` | {'str': 1375} |
| `memAvailableKb` | {'int': 1375} |
| `memTotalKb` | {'int': 1375} |
| `otherPssKb` | {'int': 1375} |
| `processes` | {'int': 1375} |
| `pssFallbackProcesses` | {'int': 1375} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
