# sandbox_telemetry_parse — 2026-10-15 22:22:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1083814 lines=2402
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2397 |
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
| `chromeBrowserPssKb` | {'int': 2397} |
| `chromeGpuPssKb` | {'int': 2397} |
| `chromeOtherPssKb` | {'int': 2397} |
| `chromeProcesses` | {'int': 2397} |
| `chromeProfiles` | {'int': 2397} |
| `chromeRendererMaxPssKb` | {'int': 2397} |
| `chromeRendererPssKb` | {'int': 2397} |
| `chromeRenderers` | {'int': 2397} |
| `chromeTabs` | {'int': 2397} |
| `chromeTabsProbedProfiles` | {'int': 2397} |
| `chromeUtilityPssKb` | {'int': 2397} |
| `desktopPssKb` | {'int': 2397} |
| `hostPssKb` | {'int': 2397} |
| `kind` | {'str': 2397} |
| `memAvailableKb` | {'int': 2397} |
| `memTotalKb` | {'int': 2397} |
| `otherPssKb` | {'int': 2397} |
| `processes` | {'int': 2397} |
| `pssFallbackProcesses` | {'int': 2397} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
