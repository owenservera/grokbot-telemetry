# sandbox_telemetry_parse — 2026-10-15 13:22:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=878606 lines=1948
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1943 |
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
| `chromeBrowserPssKb` | {'int': 1943} |
| `chromeGpuPssKb` | {'int': 1943} |
| `chromeOtherPssKb` | {'int': 1943} |
| `chromeProcesses` | {'int': 1943} |
| `chromeProfiles` | {'int': 1943} |
| `chromeRendererMaxPssKb` | {'int': 1943} |
| `chromeRendererPssKb` | {'int': 1943} |
| `chromeRenderers` | {'int': 1943} |
| `chromeTabs` | {'int': 1943} |
| `chromeTabsProbedProfiles` | {'int': 1943} |
| `chromeUtilityPssKb` | {'int': 1943} |
| `desktopPssKb` | {'int': 1943} |
| `hostPssKb` | {'int': 1943} |
| `kind` | {'str': 1943} |
| `memAvailableKb` | {'int': 1943} |
| `memTotalKb` | {'int': 1943} |
| `otherPssKb` | {'int': 1943} |
| `processes` | {'int': 1943} |
| `pssFallbackProcesses` | {'int': 1943} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
