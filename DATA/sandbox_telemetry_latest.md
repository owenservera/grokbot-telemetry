# sandbox_telemetry_parse — 2026-10-15 02:22:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=614186 lines=1363
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1358 |
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
| `chromeBrowserPssKb` | {'int': 1358} |
| `chromeGpuPssKb` | {'int': 1358} |
| `chromeOtherPssKb` | {'int': 1358} |
| `chromeProcesses` | {'int': 1358} |
| `chromeProfiles` | {'int': 1358} |
| `chromeRendererMaxPssKb` | {'int': 1358} |
| `chromeRendererPssKb` | {'int': 1358} |
| `chromeRenderers` | {'int': 1358} |
| `chromeTabs` | {'int': 1358} |
| `chromeTabsProbedProfiles` | {'int': 1358} |
| `chromeUtilityPssKb` | {'int': 1358} |
| `desktopPssKb` | {'int': 1358} |
| `hostPssKb` | {'int': 1358} |
| `kind` | {'str': 1358} |
| `memAvailableKb` | {'int': 1358} |
| `memTotalKb` | {'int': 1358} |
| `otherPssKb` | {'int': 1358} |
| `processes` | {'int': 1358} |
| `pssFallbackProcesses` | {'int': 1358} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
