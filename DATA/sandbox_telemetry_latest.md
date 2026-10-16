# sandbox_telemetry_parse — 2026-10-16 12:55:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=461817 lines=1726
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1138 |
| `memory_sample` | 579 |
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
| `chromeBrowserPssKb` | {'int': 579} |
| `chromeGpuPssKb` | {'int': 579} |
| `chromeOtherPssKb` | {'int': 579} |
| `chromeProcesses` | {'int': 579} |
| `chromeProfiles` | {'int': 579} |
| `chromeRendererMaxPssKb` | {'int': 579} |
| `chromeRendererPssKb` | {'int': 579} |
| `chromeRenderers` | {'int': 579} |
| `chromeTabs` | {'int': 579} |
| `chromeTabsProbedProfiles` | {'int': 579} |
| `chromeUtilityPssKb` | {'int': 579} |
| `desktopPssKb` | {'int': 579} |
| `hostPssKb` | {'int': 579} |
| `kind` | {'str': 579} |
| `memAvailableKb` | {'int': 579} |
| `memTotalKb` | {'int': 579} |
| `otherPssKb` | {'int': 579} |
| `processes` | {'int': 579} |
| `pssFallbackProcesses` | {'int': 579} |

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
| `cpuMillicores` | {'int': 1135} |
| `display` | {'int': 1138} |
| `kind` | {'str': 1138} |
| `processes` | {'int': 1138} |
| `pssKb` | {'int': 1138} |
| `rendererMaxPssKb` | {'int': 1138} |
| `renderers` | {'int': 1138} |
| `tabs` | {'int': 1137} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
