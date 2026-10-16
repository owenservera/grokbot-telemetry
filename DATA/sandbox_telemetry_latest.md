# sandbox_telemetry_parse — 2026-10-16 06:25:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=184161 lines=688
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 446 |
| `memory_sample` | 233 |
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
| `chromeBrowserPssKb` | {'int': 233} |
| `chromeGpuPssKb` | {'int': 233} |
| `chromeOtherPssKb` | {'int': 233} |
| `chromeProcesses` | {'int': 233} |
| `chromeProfiles` | {'int': 233} |
| `chromeRendererMaxPssKb` | {'int': 233} |
| `chromeRendererPssKb` | {'int': 233} |
| `chromeRenderers` | {'int': 233} |
| `chromeTabs` | {'int': 233} |
| `chromeTabsProbedProfiles` | {'int': 233} |
| `chromeUtilityPssKb` | {'int': 233} |
| `desktopPssKb` | {'int': 233} |
| `hostPssKb` | {'int': 233} |
| `kind` | {'str': 233} |
| `memAvailableKb` | {'int': 233} |
| `memTotalKb` | {'int': 233} |
| `otherPssKb` | {'int': 233} |
| `processes` | {'int': 233} |
| `pssFallbackProcesses` | {'int': 233} |

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
| `cpuMillicores` | {'int': 443} |
| `display` | {'int': 446} |
| `kind` | {'str': 446} |
| `processes` | {'int': 446} |
| `pssKb` | {'int': 446} |
| `rendererMaxPssKb` | {'int': 446} |
| `renderers` | {'int': 446} |
| `tabs` | {'int': 445} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
