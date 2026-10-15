# sandbox_telemetry_parse — 2026-10-15 13:18:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=877250 lines=1945
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1940 |
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
| `chromeBrowserPssKb` | {'int': 1940} |
| `chromeGpuPssKb` | {'int': 1940} |
| `chromeOtherPssKb` | {'int': 1940} |
| `chromeProcesses` | {'int': 1940} |
| `chromeProfiles` | {'int': 1940} |
| `chromeRendererMaxPssKb` | {'int': 1940} |
| `chromeRendererPssKb` | {'int': 1940} |
| `chromeRenderers` | {'int': 1940} |
| `chromeTabs` | {'int': 1940} |
| `chromeTabsProbedProfiles` | {'int': 1940} |
| `chromeUtilityPssKb` | {'int': 1940} |
| `desktopPssKb` | {'int': 1940} |
| `hostPssKb` | {'int': 1940} |
| `kind` | {'str': 1940} |
| `memAvailableKb` | {'int': 1940} |
| `memTotalKb` | {'int': 1940} |
| `otherPssKb` | {'int': 1940} |
| `processes` | {'int': 1940} |
| `pssFallbackProcesses` | {'int': 1940} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
