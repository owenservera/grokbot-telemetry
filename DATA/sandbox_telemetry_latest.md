# sandbox_telemetry_parse — 2026-10-15 17:58:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=984374 lines=2182
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2177 |
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
| `chromeBrowserPssKb` | {'int': 2177} |
| `chromeGpuPssKb` | {'int': 2177} |
| `chromeOtherPssKb` | {'int': 2177} |
| `chromeProcesses` | {'int': 2177} |
| `chromeProfiles` | {'int': 2177} |
| `chromeRendererMaxPssKb` | {'int': 2177} |
| `chromeRendererPssKb` | {'int': 2177} |
| `chromeRenderers` | {'int': 2177} |
| `chromeTabs` | {'int': 2177} |
| `chromeTabsProbedProfiles` | {'int': 2177} |
| `chromeUtilityPssKb` | {'int': 2177} |
| `desktopPssKb` | {'int': 2177} |
| `hostPssKb` | {'int': 2177} |
| `kind` | {'str': 2177} |
| `memAvailableKb` | {'int': 2177} |
| `memTotalKb` | {'int': 2177} |
| `otherPssKb` | {'int': 2177} |
| `processes` | {'int': 2177} |
| `pssFallbackProcesses` | {'int': 2177} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
