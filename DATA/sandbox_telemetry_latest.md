# sandbox_telemetry_parse — 2026-10-15 02:31:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=618254 lines=1372
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1367 |
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
| `chromeBrowserPssKb` | {'int': 1367} |
| `chromeGpuPssKb` | {'int': 1367} |
| `chromeOtherPssKb` | {'int': 1367} |
| `chromeProcesses` | {'int': 1367} |
| `chromeProfiles` | {'int': 1367} |
| `chromeRendererMaxPssKb` | {'int': 1367} |
| `chromeRendererPssKb` | {'int': 1367} |
| `chromeRenderers` | {'int': 1367} |
| `chromeTabs` | {'int': 1367} |
| `chromeTabsProbedProfiles` | {'int': 1367} |
| `chromeUtilityPssKb` | {'int': 1367} |
| `desktopPssKb` | {'int': 1367} |
| `hostPssKb` | {'int': 1367} |
| `kind` | {'str': 1367} |
| `memAvailableKb` | {'int': 1367} |
| `memTotalKb` | {'int': 1367} |
| `otherPssKb` | {'int': 1367} |
| `processes` | {'int': 1367} |
| `pssFallbackProcesses` | {'int': 1367} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
