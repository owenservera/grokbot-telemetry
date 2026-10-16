# sandbox_telemetry_parse — 2026-10-16 13:45:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=500356 lines=1870
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1234 |
| `memory_sample` | 627 |
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
| `chromeBrowserPssKb` | {'int': 627} |
| `chromeGpuPssKb` | {'int': 627} |
| `chromeOtherPssKb` | {'int': 627} |
| `chromeProcesses` | {'int': 627} |
| `chromeProfiles` | {'int': 627} |
| `chromeRendererMaxPssKb` | {'int': 627} |
| `chromeRendererPssKb` | {'int': 627} |
| `chromeRenderers` | {'int': 627} |
| `chromeTabs` | {'int': 627} |
| `chromeTabsProbedProfiles` | {'int': 627} |
| `chromeUtilityPssKb` | {'int': 627} |
| `desktopPssKb` | {'int': 627} |
| `hostPssKb` | {'int': 627} |
| `kind` | {'str': 627} |
| `memAvailableKb` | {'int': 627} |
| `memTotalKb` | {'int': 627} |
| `otherPssKb` | {'int': 627} |
| `processes` | {'int': 627} |
| `pssFallbackProcesses` | {'int': 627} |

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
| `cpuMillicores` | {'int': 1231} |
| `display` | {'int': 1234} |
| `kind` | {'str': 1234} |
| `processes` | {'int': 1234} |
| `pssKb` | {'int': 1234} |
| `rendererMaxPssKb` | {'int': 1234} |
| `renderers` | {'int': 1234} |
| `tabs` | {'int': 1233} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
