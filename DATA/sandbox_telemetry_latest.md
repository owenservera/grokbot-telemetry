# sandbox_telemetry_parse — 2026-10-15 18:31:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=994318 lines=2204
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2199 |
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
| `chromeBrowserPssKb` | {'int': 2199} |
| `chromeGpuPssKb` | {'int': 2199} |
| `chromeOtherPssKb` | {'int': 2199} |
| `chromeProcesses` | {'int': 2199} |
| `chromeProfiles` | {'int': 2199} |
| `chromeRendererMaxPssKb` | {'int': 2199} |
| `chromeRendererPssKb` | {'int': 2199} |
| `chromeRenderers` | {'int': 2199} |
| `chromeTabs` | {'int': 2199} |
| `chromeTabsProbedProfiles` | {'int': 2199} |
| `chromeUtilityPssKb` | {'int': 2199} |
| `desktopPssKb` | {'int': 2199} |
| `hostPssKb` | {'int': 2199} |
| `kind` | {'str': 2199} |
| `memAvailableKb` | {'int': 2199} |
| `memTotalKb` | {'int': 2199} |
| `otherPssKb` | {'int': 2199} |
| `processes` | {'int': 2199} |
| `pssFallbackProcesses` | {'int': 2199} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
