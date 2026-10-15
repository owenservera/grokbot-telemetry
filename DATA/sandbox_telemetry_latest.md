# sandbox_telemetry_parse — 2026-10-15 19:19:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1011946 lines=2243
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2238 |
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
| `chromeBrowserPssKb` | {'int': 2238} |
| `chromeGpuPssKb` | {'int': 2238} |
| `chromeOtherPssKb` | {'int': 2238} |
| `chromeProcesses` | {'int': 2238} |
| `chromeProfiles` | {'int': 2238} |
| `chromeRendererMaxPssKb` | {'int': 2238} |
| `chromeRendererPssKb` | {'int': 2238} |
| `chromeRenderers` | {'int': 2238} |
| `chromeTabs` | {'int': 2238} |
| `chromeTabsProbedProfiles` | {'int': 2238} |
| `chromeUtilityPssKb` | {'int': 2238} |
| `desktopPssKb` | {'int': 2238} |
| `hostPssKb` | {'int': 2238} |
| `kind` | {'str': 2238} |
| `memAvailableKb` | {'int': 2238} |
| `memTotalKb` | {'int': 2238} |
| `otherPssKb` | {'int': 2238} |
| `processes` | {'int': 2238} |
| `pssFallbackProcesses` | {'int': 2238} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
