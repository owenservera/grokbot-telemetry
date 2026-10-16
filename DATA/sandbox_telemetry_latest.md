# sandbox_telemetry_parse — 2026-10-16 07:05:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=214641 lines=802
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 522 |
| `memory_sample` | 271 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 271} |
| `chromeGpuPssKb` | {'int': 271} |
| `chromeOtherPssKb` | {'int': 271} |
| `chromeProcesses` | {'int': 271} |
| `chromeProfiles` | {'int': 271} |
| `chromeRendererMaxPssKb` | {'int': 271} |
| `chromeRendererPssKb` | {'int': 271} |
| `chromeRenderers` | {'int': 271} |
| `chromeTabs` | {'int': 271} |
| `chromeTabsProbedProfiles` | {'int': 271} |
| `chromeUtilityPssKb` | {'int': 271} |
| `desktopPssKb` | {'int': 271} |
| `hostPssKb` | {'int': 271} |
| `kind` | {'str': 271} |
| `memAvailableKb` | {'int': 271} |
| `memTotalKb` | {'int': 271} |
| `otherPssKb` | {'int': 271} |
| `processes` | {'int': 271} |
| `pssFallbackProcesses` | {'int': 271} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 519} |
| `display` | {'int': 522} |
| `kind` | {'str': 522} |
| `processes` | {'int': 522} |
| `pssKb` | {'int': 522} |
| `rendererMaxPssKb` | {'int': 522} |
| `renderers` | {'int': 522} |
| `tabs` | {'int': 521} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
