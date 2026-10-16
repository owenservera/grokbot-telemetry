# sandbox_telemetry_parse — 2026-10-16 13:56:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=508380 lines=1900
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1254 |
| `memory_sample` | 637 |
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
| `chromeBrowserPssKb` | {'int': 637} |
| `chromeGpuPssKb` | {'int': 637} |
| `chromeOtherPssKb` | {'int': 637} |
| `chromeProcesses` | {'int': 637} |
| `chromeProfiles` | {'int': 637} |
| `chromeRendererMaxPssKb` | {'int': 637} |
| `chromeRendererPssKb` | {'int': 637} |
| `chromeRenderers` | {'int': 637} |
| `chromeTabs` | {'int': 637} |
| `chromeTabsProbedProfiles` | {'int': 637} |
| `chromeUtilityPssKb` | {'int': 637} |
| `desktopPssKb` | {'int': 637} |
| `hostPssKb` | {'int': 637} |
| `kind` | {'str': 637} |
| `memAvailableKb` | {'int': 637} |
| `memTotalKb` | {'int': 637} |
| `otherPssKb` | {'int': 637} |
| `processes` | {'int': 637} |
| `pssFallbackProcesses` | {'int': 637} |

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
| `cpuMillicores` | {'int': 1251} |
| `display` | {'int': 1254} |
| `kind` | {'str': 1254} |
| `processes` | {'int': 1254} |
| `pssKb` | {'int': 1254} |
| `rendererMaxPssKb` | {'int': 1254} |
| `renderers` | {'int': 1254} |
| `tabs` | {'int': 1253} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
